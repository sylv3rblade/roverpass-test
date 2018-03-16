$ ->
  $.fn.validator.Constructor.INPUT_SELECTOR = ':input:not([type="submit"], button):enabled:visible, select';
  $('.form-horizontal').validator();

  $('.public-park-selector').on 'click', (e) ->
    value = e.currentTarget.value
    $costPerNightInput = $('.cost-per-night')
    if value == 'true'
      $costPerNightInput.removeProp('disabled')
    else
      $costPerNightInput.prop('disabled', true)