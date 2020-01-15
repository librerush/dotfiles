
function take_screenshot
  set -l mydate (date +'%Y%m%d_%H%M%S')
  set -l sspath "$HOME/Pictures/Screenshots"
  set -l ss "$sspath/screenshot_$mydate.png"

  if test -d $sspath
    scrot -z -u $ss    
  end
end

