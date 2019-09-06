import unittest 
  
class SimpleTest(unittest.TestCase): 
  
    # Returns True or False.  
    def testAssert(self):         
        self.assertTrue(True) 
  
if __name__ == '__main__': 
    unittest.main() 