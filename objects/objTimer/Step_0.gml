currentTime = current_time - startTime;
seconds = currentTime / 1000;
minutes = int64(seconds / 60);
hours = round(minutes / 60);
show_debug_message(minutes)
timeStr = string(hours) + " : " +  string(minutes) + " : " + string(seconds);