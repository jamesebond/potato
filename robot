// ev3_runForTime(motor, time, speed)
//ev3_runToRelativePosition(motor, position, speed)

/* ev3_runForTime(ev3_motorA(),500,1000);
ev3_runForTime(ev3_motorB(),500,1000);
// ev3_runToAbsolutePosition (ev3_motorB(),10,1000);
//ev3_runToAbsolutePosition (ev3_motorA(),10,1000);
ev3_pause(100);

display(ev3_ultrasonicSensor());
ev3_playSequence(1000, 500, 500, 250, 500, 0);34   */
const sensor = ev3_ultrasonicSensor();
function get_distance() {
    const d = ev3_ultrasonicSensorDistance(sensor);
    display(d);
    ev3_pause(1000);
    get_distance();
}

get_distance();



function crash() { 
    if (get_distance()=100) {
        return ev3_motorStop(motor); 
        const motorA = ev3_motorA();
const motorB = ev3_motorB();
ev3_runToRelativePosition(motorA, 900, 400);
ev3_runToRelativePosition(motorB, 900, 400);
ev3_pause(900); }

else { ev3_runToRelativePosition(motorA, 1000, 400);
ev3_runToRelativePosition(motorB, 1000, 400);
ev3_pause(900);} 




const sensor = ev3_ultrasonicSensor();
const motorA = ev3_motorA();
const motorB = ev3_motorB();
let forth = true;
function turn() {
    const d = ev3_ultrasonicSensorDistance(sensor);
    if (d > 100 && forth) {
        ev3_runForTime(motorA, 1000, 100);
        ev3_runForTime(motorB, 1000, 100);
        ev3_pause(1000);
        move_crazily();
    } else {
        forth = false;
        if (d < 300) {
            ev3_runForTime(motorA, 1000, -100);
            ev3_runForTime(motorB, 1000, -100);
            ev3_pause(1000);
            move_crazily();
        } else {
            ev3_runForTime(motorA, 69, 96);
        }
    }
}

move_crazily();

