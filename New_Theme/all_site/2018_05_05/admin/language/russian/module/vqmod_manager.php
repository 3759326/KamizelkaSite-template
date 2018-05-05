<?php
// Button
$_['button_backup']        = 'Создать реервную копию VQMod скриптов';
$_['button_cancel']        = 'Отменить';
$_['button_clear']         = 'Очистить';
$_['button_download_log']  = 'Скачать лог';
$_['button_vqcache_dump']  = 'Дамп папки vqcache';

// Heading
$_['heading_title']        = 'VQMod Менеджер';

// Columns
$_['column_action']        = 'Включить / Выключить';
$_['column_author']        = 'Автор';
$_['column_delete']        = 'Удалить';
$_['column_file_name']     = 'Имя файла';
$_['column_id']            = 'Название / Описание';
$_['column_status']        = 'Статус';
$_['column_version']       = 'Версия';
$_['column_vqmver']        = 'Версия VQMod';

// Entry
$_['entry_author']         = 'Автор перевода:';
$_['entry_backup']         = 'Резервное копирование VQMod скриптов:';
$_['entry_ext_store']      = 'Последняя версия:';
$_['entry_ext_version']    = 'Версия VQMod Менеджера:';
$_['entry_forum']          = 'Тема на OpenCart форуме:';
$_['entry_license']        = 'Лицензия:';
$_['entry_upload']         = 'Загрузка VQMod скрипта:';
$_['entry_vqcache']        = 'Кэшированные файлы VQMod:';
$_['entry_vqmod_path']     = 'Полный путь до VQMod:';
$_['entry_website']        = 'Официальный сайт:';

// Text Highlighting
$_['highlight']            = '<span class="highlight">%s</span>';

// VQMod Manager Use Errors
$_['error_delete']         = 'Внимание: Невозможно удалить VQMod скрипт!';
$_['error_filetype']       = 'Внимание: Неверный тип файла!  Загружайте файлы только с расширением .xml';
$_['error_install']        = 'Внимание: Невозможно установить VQMod скрипт!';
$_['error_invalid_xml']    = 'Внимание: XML код VQMod скрипта неправильный!  Проврьте, что файл не поврежден или обратитесь к автору скрипта.';
$_['error_log_size']       = 'Внимание: Ваш лог ошибок VQMod весит %s МБ. Максимальнй размер разрешенный в VQMod Менеджере - 6 МБ.  Вы можете скачать лог ошибок по FTP в корне сайта по пути "vqmod/logs" или нажав на кнопку \'Скачать лог\' в вкладке "Лог ошибок".';
$_['error_log_download']   = 'Внимание: Нет логов дл скачивания и это чоень хорошо :)';
$_['error_moddedfile']     = 'Внимание: VQMod скрипт пытается модифицировать файл \'%s\' который либо не существует, либо доступ к нему запрещен!';
$_['error_move']           = 'Внимание: Невозможно осхранить файл на сервере.  Пожалуйста проверьте права папки.';
$_['error_permission']     = 'Внимание: У Вас нет прав для изменени модуля "VQMod Менеджер"!';
$_['error_uninstall']      = 'Внимание: Невозможно выключить VQMod скрипт!';
$_['error_vqmod_opencart'] = 'Внимание: \'vqmod_opencart.xml\' необходим для правильного функционирования VQMod!';

// $_FILE Upload Errors
$_['error_form_max_file_size']   = 'Внимание: VQMod скрипт превышает максимально разрешенный размер файла!';
$_['error_ini_max_file_size']    = 'Внимание: VQMod скрипт превышает максимально разрешенный размер файла из php.ini!';
$_['error_no_temp_dir']          = 'Внимание: Не найдена временная директория!';
$_['error_no_upload']            = 'Внимание: Вы не выбрали файл для загрузки!';
$_['error_partial_upload']       = 'Внимание: Загрузка завершена неудачно!';
$_['error_php_conflict']         = 'Внимание: Неизвестный PHP конфликт!';
$_['error_unknown']              = 'Внимание: Неизвестная ошибка!';
$_['error_write_fail']           = 'Внимание: Ошибка при записи VQMod скрипта!';

// VQMod Installation Errors
$_['error_error_log_write']            = 'Невозможно записывать ошибки в лог VQMod. Пожалуйста установите для папки "<span class="error-install">/vqmod</span>" права на 755 или 777 и попробуйте снова.';
$_['error_error_logs_write']           = 'Невозможно записывать ошибки в лог VQMod. Пожалуйста установите для папки "<span class="error-install">/vqmod/logs</span>" права на 755 или 777 и попробуйте снова.';
$_['error_opencart_version']           = 'Необходимо, чтобы была установлена версия OpenCart не ниже 1.5.x для использования VQMod Менеджера!';
$_['error_opencart_xml']               = 'Необходимый файл "<span class="error-install">/vqmod/xml/vqmod_opencart.xml</span>" недоступен или не существует!  Пожалуйста переустановите OpenCart-совместимую версию VQMod\'а  по ссылке: <a href="http://code.google.com/p/vqmod/" target="_blank">http://code.google.com/p/vqmod/</a> и попробуйте снова.';
$_['error_opencart_xml_disabled']      = 'Внимание: "<span class="error-install">vqmod_opencart.xml</span>" выключен!  VQMod скрипты не будут работать!';
$_['error_opencart_xml_version']       = 'Кажется, что Вы используете старую версию  "<span class="error-install">vqmod_opencart.xml</span>" дл Вашей OpenCart!  Пожалуйста переустановите OpenCart-совместимую версию VQMod\'а  по ссылке: <a href="http://code.google.com/p/vqmod/" target="_blank">http://code.google.com/p/vqmod/</a> и попробуйте снова.';
$_['error_vqcache_dir']                = 'Необходимая папка "<span class="error-install">/vqmod/vqcache</span>" не доступна!  Пожалуйста переустановите OpenCart-совместимую версию VQMod\'а  по ссылке: <a href="http://code.google.com/p/vqmod/" target="_blank">http://code.google.com/p/vqmod/</a> и попробуйте снова.';
$_['error_vqcache_write']              = 'Невозможно записать данные в папку "<span class="error-install">/vqmod/vqcache</span>" !  Пожалуйста установите права на 755 или 777 и попробуйте снова.';
$_['error_vqcache_files_missing']      = 'VQMod не может нормально генерировать логи в папку "vqcache"!';
$_['error_vqmod_core']                 = 'Необходимый файл "<span class="error-install">vqmod.php</span>" отсутствует!  Пожалуйста переустановите OpenCart-совместимую версию VQMod\'а  по ссылке: <a href="http://code.google.com/p/vqmod/" target="_blank">http://code.google.com/p/vqmod/</a> и попробуйте снова.';
$_['error_vqmod_dir']                  = 'Папка "<span class="error-install">/vqmod</span>" не доступна или не существует!';
$_['error_vqmod_install_link']         = 'Кажется, что VQmod не установлен в OpenCart!  Пожалуйста, запустите установщик VQMod по ссылке: <a href="%1$s">%1$s</a>.  Если Вы уже устанавливали VQMod, убедитесь, что его версия самая последняя и была скачана с <a href="http://code.google.com/p/vqmod/" target="_blank">http://code.google.com/p/vqmod/</a>.';
$_['error_vqmod_opencart_integration'] = 'Кажется, что VQmod не установлен в OpenCart!  Пожалуйста переустановите OpenCart-совместимую версию VQMod\'а  по ссылке: <a href="http://code.google.com/p/vqmod/" target="_blank">http://code.google.com/p/vqmod/</a> и попробуйте снова.';
$_['error_vqmod_script_dir']           = 'Необходимая папка "<span class="error-install">/vqmod/xml</span>" не доступна или не существует!  Пожалуйста переустановите OpenCart-совместимую версию VQMod\'а  по ссылке: <a href="http://code.google.com/p/vqmod/" target="_blank">http://code.google.com/p/vqmod/</a> и попробуйте снова.';
$_['error_vqmod_script_write']         = 'Невозможно записать данные в папку "<span class="error-install">/vqmod/xml</span>" !  Пожалуйста установите права на 755 или 777 и попробуйте снова.';

// VQMod Manager Dependency Errors
$_['error_simplexml']       = '<a href="http://php.net/manual/en/book.simplexml.php" target="_blank">SimpleXML</a> должен быть установлен, чтобы  VQMod Менджер работал правильно!';
$_['error_ziparchive']      = '<a href="http://php.net/manual/en/class.ziparchive.php" target="_blank">ZipArchive</a> должен быть установлен,чтобы загружать/скаичвать VQMod скрипты и их файлы!';

// VQMod Log Errors
$_['error_mod_aborted']     = 'Изменение отменено';
$_['error_mod_skipped']     = 'Операция проигнорирована';

// VQMod Variable Settings
$_['setting_cachetime']       = 'cacheTime:<br /><span class="help">Deprecated as of VQMod 2.2.0</span>';
$_['setting_dir_separator']   = 'Разделитель директории:';
$_['setting_logfolder']       = 'Log Folder:<br /><span class="help">VQMod 2.2.0 and later</span>';
$_['setting_logging']         = 'Записывать ошибки в лог:';
$_['setting_modcache']        = 'modCache:';
$_['setting_path_replaces']   = 'Path Replacements:<br /><span class="help">Changes do not go into effect until the mods.cache file is deleted.</span>';
$_['setting_protected_files'] = 'Защищенные файлы:';
$_['setting_usecache']        = 'useCache:<br /><span class="help">Deprecated as of VQMod 2.1.7</span>';

// Success
$_['success_clear_vqcache'] = 'Успешно: VQMod кэш очищен!';
$_['success_clear_log']     = 'Успешно: VQMod лог ошибок очищен!';
$_['success_delete']        = 'Успешно: VQMod скрипт удален навсегда!';
$_['success_install']       = 'Успешно: VQMod скрипт включен!';
$_['success_uninstall']     = 'Успешно: VQMod скрипт выключен!';
$_['success_upload']        = 'Успешно: VQMod скрипт загружен и установлен!';

// Tabs
$_['tab_about']             = 'Информация';
$_['tab_error_log']         = 'Лог ошибок';
$_['tab_settings']          = 'Настройки';
$_['tab_scripts']           = 'VQMod Скрипты';

//Включить / Выключить
$_['text_enable']          = 'Включить';
$_['text_disable']         = 'Выключить';

// Text
$_['text_autodetect']       = 'Кажется VQMod установлен по следующему пути.  Нажмите на кнопку, чтобы продолжить установку.';
$_['text_autodetect_fail']  = 'Невозможно получить информацию о VQMod.  Пожалуйста, скачайте и установите <a href="http://code.google.com/p/vqmod/downloads/list" target="_blank">последнюю версию VQMod</a>или проверьте все пути установки';
$_['text_cachetime']        = '%s секунд';
$_['text_delete']           = 'Удалить';
$_['text_disabled']         = 'Выключено';
$_['text_enabled']          = 'Включено';
$_['text_install']          = 'Установить';
$_['text_module']           = 'Модули';
$_['text_no_results']       = 'VQMod скрипты не найдены!';
$_['text_separator']        = ' &rarr; ';
$_['text_success']          = 'Успешно: Вы изменили модуль "VQMod Менеджер!"';
$_['text_unavailable']      = '&mdash;';
$_['text_uninstall']        = 'Удалить';
$_['text_upload']           = 'Загрузить';
$_['text_usecache_help']    = 'useCache is deprecated as of VQMod 2.1.7'; // @TODO
$_['text_vqcache_help']     = 'Очищает содержимое папки "vqcache" и удалет файл "mods.cache".<br>Некоторые системные файлы будут не затронуты во время очистки кэша.';

// Version
$_['vqmod_manager_author']  = '<a href="http://about.me/TemaSM">Tema SMirnov (TemaSM)';
$_['vqmod_manager_license'] = 'Creative Commons BY-NC-SA 3.0';
$_['vqmod_manager_version'] = '2.0.1';

// Javascript Warnings
$_['warning_required_delete']    = 'ВНИМАНИЕ: Удаление \\\'vqmod_opencart.xml\\\' ПОЛНОСТЬЮ ПРЕКРАТИТ работу VQMod ! Вы действительно хотите УДАЛИТЬ этот скрипт?';
$_['warning_required_uninstall'] = 'ВНИМАНИЕ: Выключение \\\'vqmod_opencart.xml\\\' ПОЛНОСТЬЮ ПРЕКРАТИТ работу VQMod ! Вы действительно хотите ВЫКЛЮЧИТЬ этот скрипт?';
$_['warning_vqmod_delete']       = 'ВНИМАНИЕ: После полного удаления VQMod скрипта, его невозможно будет вернуть! Вы уверены, что хотите это сделать?';
?>