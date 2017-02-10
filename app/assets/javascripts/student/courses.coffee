$ ->
 $('.course-span').on 'click', (e) ->
   container = $(e.target).closest('.course-container').children('div.course-code')
   container.removeClass('hidden')


