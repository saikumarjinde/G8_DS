from abc import ABC,abstractmethod
class Shape(ABC):
    @abstractmethod
    def area(self):
        pass
    @abstractmethod
    def perimeter(self):
        pass

class Circle(Shape):
    pie=3.14
    def __init__(self,radius):
        self.radius=radius
   
    def area(self):
        area=self.pie * self.radius * self.radius
        print(f"Area of Circle:{area}")

    def perimeter(self):
        perimeter=2 * self.pie * self.radius
        print(f"Perimeter of Circle:{perimeter}")
    
class Triangle(Shape):
    def __init__(self,base,height,side1,side2,side3):
        self.height=height
        self.base=base
        self.side1=side1
        self.side2=side2
        self.side3=side3

    def area(self):
        area=0.5*self.base*self.height
        print(f"Area of Triangle:{area}")
        
    def perimeter(self):
        perimeter=self.side1+self.side2+self.side3
        print(f"Perimeter of Trianle:{perimeter}")
       
class Square(Shape):
    
    def __init__(self,side):
        self.side=side

    def area(self):
        area=self.side*self.side
        print(f"Area of Square:{area}")

    def perimeter(self):
        perimeter=4*self.side
        print(f"Perimeter of Square:{perimeter}")

C=Circle(5)
C.area()
C.perimeter()
T=Triangle(1,2,3,4,5)
T.area()
T.perimeter()
S=Square(4)
S.area()
S.perimeter()