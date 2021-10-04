//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
//create a pen that will draw on the canvas
let p = Pen(drawingUpon: canvas)
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
// Move the origin to the middle of the canvas
canvas.translate(to: Point(x: canvas.width / 2, y: canvas.height / 2))

//draw a grid
canvas.drawAxes(withScale: true, by: 20, color: Color.black)

// Draw an N-sided polygon
func drawPolygon(sides: Int,
                 sideLimit: Int,
                 length: Double) {
    
    //loop to draw visible part of curve
    for _ in 1 ... sideLimit {
        p.addLine(distance: length)
        p.turn(degrees: 360.0/Double(sides))
    }
    //loop again
    if sides - sideLimit > 0 {
        for _ in 1 ... sides - sideLimit {
            p.move(distance: length)
            p.turn(degrees: 360.0/Double(sides))
        }
    }
    
}
p.penColor = Color.red
// Upper Haden window
p.goto(dx: -240, dy: 300)
p.addLine(distance: 380)
p.goto(dx: -380, dy: 0)
p.turn(degrees: -90)
p.addLine(distance: 220)
p.goto(dx: 0, dy: 100)
p.turn(degrees: 90)
p.addLine(distance: 100)
p.turn(degrees: 90)
p.addLine(distance: 127)
p.turn(degrees: 90)
p.addLine(distance: 100)
p.turn(degrees: 90)
p.addLine(distance: 7)
p.goto(dx: 100, dy: 7)
p.turn(degrees: 60)
p.addLine(distance: 50)
p.turn(degrees: -83)
p.addLine(distance: 112)
p.goto(dx: 0, dy: 122)
p.turn(degrees: 83)
p.addLine(distance: 49)

    // roof ledge
p.goto(dx: -47, dy: -95)
p.turn(degrees: -83)
p.addLine(distance: 32)
p.turn(degrees: 112.5)
p.addLine(distance: 170)
p.turn(degrees: 80)
p.addLine(distance: 23)



    //
p.turn(degrees: -79.7)
p.addLine(distance: 124)
p.turn(degrees: -90)
p.addLine(distance: 93)

    // Gym
p.goto(dx: -180, dy: 103)
p.turn(degrees: 180)
p.addLine(distance: 40)
p.turn(degrees: -90)
p.addLine(distance: 165)
p.drawTo(dx: -0, dy: -40)
p.drawTo(dx: -165, dy: 0)
p.goto(dx: 0, dy: 40)
p.drawTo(dx: -7, dy: 0)
p.drawTo(dx: 11, dy: 39)
p.drawTo(dx: 155, dy: 0)
p.drawTo(dx: 11, dy: -39)
p.drawTo(dx: -7, dy: 0)

    // Gym windows
p.goto(dx: -155, dy: 0)
for _ in 1 ... 3 {
    p.turn(degrees: -90)
    p.addLine(distance: 40)
    p.turn(degrees: 90)
    p.addLine(distance: 40)
    p.turn(degrees: 90)
    p.addLine(distance: 40)
    p.turn(degrees: -90)
    p.addLine(distance: 12)
}

// Gutter
p.goto(dx: -278, dy: -60)
p.turn(degrees: -115)
p.addLine(distance: 18)
p.turn(degrees: 114.8)
p.addLine(distance: 183)
p.turn(degrees: 90)
p.addLine(distance: 8)
p.drawTo(dx: -8, dy: 0)
p.goto(dx: 0, dy: 15)
p.drawTo(dx: 128, dy: 0)
p.turn(degrees: -89.5)
p.goto(dx: -380, dy: 7)
p.addLine(distance: 91)

// detail in upper hadden window
p.goto(dx: -83, dy: 124)
p.turn(degrees: -90)
p.addLine(distance: 119)
p.goto(dx: 79, dy: 120)
p.addLine(distance: 119)
p.goto(dx: 10, dy: 20)
p.drawTo(dx: -101, dy: 0)
p.goto(dx: 0, dy: 10)
p.drawTo(dx: 101, dy: 0)
p.goto(dx: 0, dy: 10)
p.drawTo(dx: -101, dy: 0)
p.goto(dx: 0, dy: 60)
p.drawTo(dx: 101, dy: 0)
p.goto(dx: 0, dy: -10)
p.turn(degrees: 90)
p.addLine(distance: -101)
p.goto(dx: 0, dy: -10)
p.addLine(distance: 101)
p.goto(dx: -40, dy: -40)
p.drawTo(dx: 0, dy: -10)
p.goto(dx: -20, dy: 0)
p.drawTo(dx: 0, dy: 10)
p.goto(dx: 120, dy: -75)
p.turn(degrees: -90)
p.addLine(distance: 66)

//
p.goto(dx: 221, dy: 93)
p.turn(degrees: 180)
p.addLine(distance: 128)
p.goto(dx: 0, dy: -220)
p.turn(degrees: 90)
p.addLine(distance: 380)

/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
