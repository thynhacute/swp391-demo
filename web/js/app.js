// Begin Storage Helper

Storage = {
	Local: {
		SetData: (key, value) => {
			localStorage.setItem(key, value);
		},
		GetData: (key) => {
			return localStorage.getItem(key);
		},
		ContainKey: (key) => {
			return localStorage.getItem(key) !== null ? true : false;
		},
		ClearData: (key) => {
			localStorage.removeItem(key);
		},
		ClearAll: () => {
			localStorage.clear();
		},
	},
	Session: {
		SetData: (key, value) => {
			sessionStorage.setItem(key, value);
		},
		GetData: (key) => {
			return sessionStorage.getItem(key);
		},
		ContainKey: (key) => {
			return sessionStorage.getItem(key) !== null ? true : false;
		},
		ClearData: (key) => {
			sessionStorage.removeItem(key);
		},
		ClearAll: () => {
			sessionStorage.clear();
		},
	},
	Cookie: {
		SetData: (key, value, expireDays = 0) => {
			if (expireDays) {
				const currentDate = new Date();
				currentDate.setTime(currentDate.getTime() + expireDays * 24 * 60 * 60 * 1000);
				const expires = 'expires=' + currentDate.toUTCString();
				document.cookie = key + '=' + value + ';' + expires + ';path=/';
			} else {
				document.cookie = key + '=' + value + ';path=/';
			}
		},
		GetData: (key) => {
			let name = key + '=';
			let decodedCookie = decodeURIComponent(document.cookie);
			let ca = decodedCookie.split(';');
			for (let i = 0; i < ca.length; i++) {
				let c = ca[i];
				while (c.charAt(0) == ' ') {
					c = c.substring(1);
				}
				if (c.indexOf(name) == 0) {
					return c.substring(name.length, c.length);
				}
			}
		},
		ContainKey: (key) => {
			return Storage.Cookie.GetData(key) ? true : false;
		},
		ClearData: (key) => {
			Storage.Cookie.SetData(key, '', -1);
		},
		ClearAll: () => {
			document.cookie = '';
		},
	},
};

// End Storage Helper

// Begin App Helper

let callLoadings = 0;

App = {
	UI: {
		ShowLoading: () => {
			if (!callLoadings) {
				$('#loading').show();
			}
			callLoadings++;
		},
		HideLoading: () => {
			if (callLoadings === 1) {
				$('#loading').hide();
			}
			callLoadings--;
		},
		ShowMessage: (message) => {
			$('#message').html(message);
			$('#message-modal').modal();
		},
	},

	Feature: {
		// Begin common helper

		GetRandomString: (length = 16, uppercase = false) => {
			let characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';

			let randomString = '';
			for (let i = 0; i < length; i++) {
				randomString += characters.charAt(Math.floor(Math.random() * characters.length));
			}

			return uppercase ? randomString.toUpperCase() : randomString;
		},

		GetRandomStringNumber: (length = 8) => {
			let characters = '0123456789';

			let randomString = '';
			for (let i = 0; i < length; i++) {
				randomString += characters.charAt(Math.floor(Math.random() * characters.length));
			}

			return randomString;
		},

		RoundNumber: (number) => {
			return Math.ceil(number / 1000) * 1000;
		},

		FormatNumber: (number) => {
			return numeral(number).format('0,0');
		},

		// End common helper

		// Begin request helper

		Get: (url, data = {}, callback = null, extConfigs = {}) => {
			data['api'] = true;

			let configs = {
				url: url,
				method: 'GET',
				data: data,
				beforeSend: () => {
					App.UI.ShowLoading();
				},
				success: (data, textStatus, jqXHR) => {
					App.UI.HideLoading();
					if (callback) {
						callback(data, textStatus, jqXHR);
					}
				},
				error: (jqXHR, textStatus, errorThrown) => {
					App.UI.HideLoading();
					App.UI.ShowMessage(jqXHR.statusText);
				},
			};

			for (let propertyName in extConfigs) {
				configs[propertyName] = extConfigs[propertyName];
			}

			$.ajax(configs);
		},
		Post: (url, data = {}, callback = null, extConfigs = {}) => {
			data['api'] = true;
			data['_token'] = csrf_token;

			let configs = {
				url: url,
				method: 'POST',
				data: data,
				beforeSend: () => {
					App.UI.ShowLoading();
				},
				success: (data, textStatus, jqXHR) => {
					App.UI.HideLoading();
					if (callback) {
						callback(data, textStatus, jqXHR);
					}
				},
				error: (jqXHR, textStatus, errorThrown) => {
					App.UI.HideLoading();
					App.UI.ShowMessage(jqXHR.statusText);
				},
			};

			for (let propertyName in extConfigs) {
				configs[propertyName] = extConfigs[propertyName];
			}

			$.ajax(configs);
		},
		Patch: (url, data = {}, callback = null, extConfigs = {}) => {
			data['api'] = true;
			data['_method'] = 'PATCH';
			data['_token'] = csrf_token;

			let configs = {
				url: url,
				method: 'POST',
				data: data,
				beforeSend: () => {
					App.UI.ShowLoading();
				},
				success: (data, textStatus, jqXHR) => {
					App.UI.HideLoading();
					if (callback) {
						callback(data, textStatus, jqXHR);
					}
				},
				error: (jqXHR, textStatus, errorThrown) => {
					App.UI.HideLoading();
					App.UI.ShowMessage(jqXHR.statusText);
				},
			};

			for (let propertyName in extConfigs) {
				configs[propertyName] = extConfigs[propertyName];
			}

			$.ajax(configs);
		},
		Delete: (url, data = {}, callback = null, extConfigs = {}) => {
			data['api'] = true;
			data['_method'] = 'DELETE';
			data['_token'] = csrf_token;

			let configs = {
				url: url,
				method: 'POST',
				data: data,
				beforeSend: () => {
					App.UI.ShowLoading();
				},
				success: (data, textStatus, jqXHR) => {
					App.UI.HideLoading();
					if (callback) {
						callback(data, textStatus, jqXHR);
					}
				},
				error: (jqXHR, textStatus, errorThrown) => {
					App.UI.HideLoading();
					App.UI.ShowMessage(jqXHR.statusText);
				},
			};

			for (let propertyName in extConfigs) {
				configs[propertyName] = extConfigs[propertyName];
			}

			$.ajax(configs);
		},
		UploadFiles: (url, data = {}, callback = null, extConfigs = {}) => {
			data['api'] = true;
			data['_token'] = csrf_token;

			let configs = {
				url: url,
				method: 'POST',
				cache: false,
				contentType: false,
				processData: false,
				data: data,
				beforeSend: () => {
					App.UI.ShowLoading();
				},
				success: (data, textStatus, jqXHR) => {
					App.UI.HideLoading();
					if (callback) {
						callback(data, textStatus, jqXHR);
					}
				},
				error: (jqXHR, textStatus, errorThrown) => {
					App.UI.HideLoading();
					App.UI.ShowMessage(jqXHR.statusText);
				},
			};

			for (let propertyName in extConfigs) {
				configs[propertyName] = extConfigs[propertyName];
			}

			$.ajax(configs);
		},

		// End request helper

		SetLocale: (locale = 'en') => {
			Storage.Cookie.SetData('locale', locale);
			location.reload();
		},

		ConfigCKEditor: (callback, selector = '#editor1', extConfigs = {}) => {
			const fontSizes = Array.from(Array(49).keys()).filter((x) => {
				return (x > 11 && x < 20 && x % 2 === 0) || (x > 19 && x < 40 && x % 4 === 0) || (x > 39 && x % 8 === 0);
			});
			fontSizes.unshift('default');

			const configs = {
				extraPlugins: [CKEditorUploadAdapterPlugin],
				toolbar: {
					items: [
						'heading',
						'|',
						'bold',
						'italic',
						'underline',
						'fontSize',
						'fontFamily',
						'fontColor',
						'fontBackgroundColor',
						'alignment',
						'bulletedList',
						'numberedList',
						'|',
						'indent',
						'outdent',
						'|',
						'link',
						'imageUpload',
						'blockQuote',
						'insertTable',
						'mediaEmbed',
						'undo',
						'redo',
					],
				},
				language: locale,
				image: {
					toolbar: ['imageTextAlternative', 'imageStyle:full', 'imageStyle:side'],
				},
				table: {
					contentToolbar: ['tableColumn', 'tableRow', 'mergeTableCells'],
				},
				fontSize: {
					options: fontSizes,
				},
				licenseKey: '',
			};

			for (let propertyName in extConfigs) {
				configs[propertyName] = extConfigs[propertyName];
			}

			ClassicEditor.create($(selector)[0], configs)
				.then((editor) => {
					callback(editor);
				})
				.catch((error) => {
					console.error(error);
				});
		},
	},
};

// End App Helper

// Begin custom global js

$(document).ready(() => {
	// Begin init datetime picker

	$('.dp').datetimepicker({
		format: 'd-m-Y',
		timepicker: false,
	});

	$('.dtp').datetimepicker({
		format: 'd-m-Y H:i',
		step: 5,
	});

	$('.dp').each(function () {
		if ($(this).val()) {
			let strDate = moment($(this).prev().val(), 'YYYY-MM-DD').format('DD-MM-YYYY');
			$(this).val(strDate === 'Invalid date' ? null : strDate);
		}
	});

	$('.dp').change(function () {
		let prevInput = $(this).prev();
		if ($(this).val()) {
			prevInput.val(moment($(this).val(), 'DD-MM-YYYY').format('YYYY-MM-DD'));
		} else {
			prevInput.val('');
		}
	});

	$('.dtp').each(function () {
		if ($(this).val()) {
			let strDate = moment($(this).prev().val(), 'YYYY-MM-DD HH:mm:ss').format('DD-MM-YYYY HH:mm');
			$(this).val(strDate === 'Invalid date' ? null : strDate);
		}
	});

	$('.dtp').change(function () {
		let prevInput = $(this).prev();
		if ($(this).val()) {
			prevInput.val(moment($(this).val(), 'YYYY-MM-DD HH:mm:ss').format('DD-MM-YYYY HH:mm'));
		} else {
			prevInput.val('');
		}
	});

	// End init datetime picker
});

// End custom global js

