%feature("docstring") Quaternions::Quaternion::dot """


  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    double
  
"""

%feature("docstring") Quaternions::Quaternion::conjugate """


  Parameters
  ----------
    (none)
  
  Returns
  -------
    Quaternion
  
"""

%feature("docstring") Quaternions::Quaternion::angle """


  Parameters
  ----------
    (none)
  
  Returns
  -------
    double
  
"""

%feature("docstring") Quaternions::Quaternion::commutator """


  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  
"""

%feature("docstring") Quaternions::UnflipRotors """
Remove sign-ambiguity of rotors.
================================
  Parameters
  ----------
    const vector<Quaternion>& R
      Vector of rotors
    const double discont = 1.4142135623730951
      Acceptable discontinuity [default: sqrt(2)]
  
  Returns
  -------
    vector<Quaternion>
  
  Description
  -----------
    Because of the two-sided nature of quaternion rotations, the sign of a
    rotor may be undetermined in many cases. Discontinuous flips in that sign
    for rotor-valued functions of time can cause significant problems. This
    function removes those flips by ensuring that the output rotors at
    successive instants are within 'discont' of each other.
  
"""

%feature("docstring") Quaternions::Quaternion::inverse """


  Parameters
  ----------
    (none)
  
  Returns
  -------
    Quaternion
  
"""

%feature("docstring") Quaternions::inverse """


  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  



  Parameters
  ----------
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  
"""

%feature("docstring") Quaternions::Quaternion::operator== """


  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    bool
  
"""

%feature("docstring") Quaternions::Quaternion::cross """


  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  
"""

%feature("docstring") Quaternions::RDelta """
Difference between frame rotors.
================================
  Parameters
  ----------
    const vector<Quaternion>& R1
      Vector of rotors
    const vector<Quaternion>& R2
      Vector of rotors
    const unsigned int IndexOfFiducialTime = 0
      Integer index of time at which difference is set to zero [default: 0]
  
  Returns
  -------
    vector<Quaternion>
  
"""

%feature("docstring") ScalarIntegral """
Integrate scalar function by simple trapezoidal rule.
=====================================================
  Parameters
  ----------
    const vector<double>& fdot
      Vector of scalars.
    const vector<double>& t
      Vector of corresponding time steps.
  
  Returns
  -------
    vector<double>
  
"""

%feature("docstring") Quaternions::Quaternion::abs """


  Parameters
  ----------
    (none)
  
  Returns
  -------
    double
  
"""

%feature("docstring") Quaternions::abs """


  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    double
  



  Parameters
  ----------
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<double>
  
"""

%feature("docstring") Quaternions::MinimalRotation """
Minimal-rotation version of the input frame.
============================================
  Parameters
  ----------
    const vector<Quaternion>& R
      Vector of rotors.
    const vector<double>& T
      Vector of corresponding time steps.
    const unsigned int NIterations = 5
      Number of refinements [default: 5]
  
  Returns
  -------
    vector<Quaternion>
  
  Description
  -----------
    This function returns a copy of the input R, which takes the z axis to the
    same point as R, but adjusts the rotation about that new point by imposing
    the minimal-rotation condition.
  
"""

%feature("docstring") Quaternions::log """


  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  



  Parameters
  ----------
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  
"""

%feature("docstring") Quaternions::sqrt """


  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  



  Parameters
  ----------
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  
"""

%feature("docstring") Quaternions::Component """


  Parameters
  ----------
    const vector<Quaternions::Quaternion>& Q
    const unsigned int i
  
  Returns
  -------
    vector<double>
  
"""

%feature("docstring") Quaternions::DifferentiateRotorByLogarithm """
Calculate the derivative of a rotor by the logarithm formula.
=============================================================
  Parameters
  ----------
    const vector<Quaternion>& RIn
    const vector<double>& tIn
  
  Returns
  -------
    vector<Quaternion>
  
  Description
  -----------
    This is a much more complicated way of evaluating the derivative of a
    quaternion function of time, as compared to finite differencing by
    'QuaternionDerivative'. However, there may be accuracy advantages when the
    logarithm is smooth, and  at the least  this can serve as a good test of
    the correctness of the logarithm formula.
  
"""

%feature("docstring") Quaternions::Squad """
Squad interpolation of Quaternion time series.
==============================================
  Parameters
  ----------
    const vector<Quaternion>& RIn
      Vector of rotors
    const vector<double>& tIn
      Vector of corresponding times
    const vector<double>& tOut
      Vector of times to which RIn will be interpolated
  
  Returns
  -------
    vector<Quaternion>
  
  Description
  -----------
    This function implements a version of cubic-spline interpolation designed
    for unit quaternions, which delivers more accurate, smooth, and physical
    rotations than other forms of interpolation.
  
"""

%feature("docstring") Quaternions::angle """


  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    double
  



  Parameters
  ----------
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<double>
  
"""

%feature("docstring") Quaternions::FrameFromAngularVelocity_2D """
Find the frame with the given angular velocity function.
========================================================
  Parameters
  ----------
    vector<double>(*)(const double t) Omega
      Function pointer returning angular velocity
    const double t0
      Initial time
    const double t1
      Final time
    vector<Quaternion>& Qs
      Output frame rotors
    vector<double>& Ts
      Output time steps
  
  Returns
  -------
    void
  
  Description
  -----------
    This function takes a function pointer Omega (which returns a 3-vector,
    given the time) and integrates to find the frame with that angular velocity.
    
    This function may not be very useful in general, because the angular
    velocity may not be known as a function of time. However, there are
    situations where the angular velocity is known at an instant of time, given
    other information. The code for this function should serve as a useful
    guide when implementing such integrations.
    
    In particular, the key piece in this integration is to reset the value of
    the quaternion logarithm (denoted below as r) between integration steps
    when the magnitude of r is too large. It gets reset to a value that is
    identical in terms of the resulting rotation, but has a smaller magnitude,
    so that the final result doesn't wander too much. This is equivalent to
    changing branches of a complex logarithm.
    
    There are two important things to note about this resetting procedure.
    First, the time stepper may want to take a very small step immediately
    after the reset, and should not be cause for alarm. Below, this is dealt
    with by also restting nSteps, and making sure that we take at least 10 more
    steps after that to let the time stepper adjust its step sizes accordingly.
    
    Second, the resulting rotor (which is the exponential of the logarithm)
    will flip signs when the logarithm is reset. This will have no effect on
    the physical frame deduced from the rotor, but could be bad news for
    interpolations. So we simply 'unflip' the signs when returning.
  
"""

%feature("docstring") Quaternions::exp """


  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  



  Parameters
  ----------
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  
"""

%feature("docstring") Quaternions::QuaternionDerivative """
Three-point finite-differencing of vector of Quaternions.
=========================================================
  Parameters
  ----------
    const vector<Quaternion>& f
      Vector of Quaternions.
    const vector<double>& t
      Vector of corresponding time steps.
  
  Returns
  -------
    vector<Quaternion>
  
  Description
  -----------
    Sundquist and Veronis, Tellus XXII (1970), 1
  
"""

%feature("docstring") Quaternions::Quaternion::normsquared """


  Parameters
  ----------
    (none)
  
  Returns
  -------
    double
  
"""

%feature("docstring") Quaternions::Quaternion::sqrtOfRotor """


  Parameters
  ----------
    (none)
  
  Returns
  -------
    Quaternion
  
"""

%feature("docstring") Quaternions::PrescribedRotation """
Input frame with prescribed rate of rotation about Z axis.
==========================================================
  Parameters
  ----------
    const vector<double>& RotationRateAboutZ
      Vector of rotation rates about the new frame's Z axis.
    const vector<Quaternion>& R
      Vector of rotors.
    const vector<double>& T
      Vector of corresponding time steps.
    const unsigned int NIterations = 5
      Number of refinements [default: 5]
  
  Returns
  -------
    vector<Quaternion>
  
  Description
  -----------
    This function returns a copy of the input R, which takes the z axis to the
    same point as R, but adjusts the rotation about that new point by imposing
    the minimal-rotation condition, and then including an additional rotation
    about the new Z axis to agree with the given rotation rate.
  
"""

%feature("docstring") Quaternions::Component3 """


  Parameters
  ----------
    const vector<Quaternions::Quaternion>& Q
  
  Returns
  -------
    vector<double>
  
"""

%feature("docstring") Quaternions::Component2 """


  Parameters
  ----------
    const vector<Quaternions::Quaternion>& Q
  
  Returns
  -------
    vector<double>
  
"""

%feature("docstring") Quaternions::QuaternionArray """


  Parameters
  ----------
    const vector<double>& vartheta
    const vector<double>& varphi
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<double>& alpha
    const vector<double>& beta
    const vector<double>& gamma
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<double>& w0
    const vector<double>& x0
    const vector<double>& y0
    const vector<double>& z0
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<vector<double>>& q
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<double>& angle
    const vector<vector<double>>& axis
  
  Returns
  -------
    vector<Quaternion>
  
"""

%feature("docstring") Quaternions::Component0 """


  Parameters
  ----------
    const vector<Quaternions::Quaternion>& Q
  
  Returns
  -------
    vector<double>
  
"""

%feature("docstring") SQR """


  Parameters
  ----------
    const double& x
  
  Returns
  -------
    double
  
"""

%feature("docstring") Quaternions::FrameFromAngularVelocity_2D_Integrand """
Time-derivative of 2-D quaternion logarithm for vector with given angular velocity.
===================================================================================
  Parameters
  ----------
    const double r_x
    const double r_y
    vector<double> Omega
    double& rdot_x
    double& rdot_y
  
  Returns
  -------
    void
  
"""

%feature("docstring") Quaternions::commutator """


  Parameters
  ----------
    const Quaternion& Q
    const Quaternion& P
  
  Returns
  -------
    Quaternion
  
"""

%feature("docstring") Quaternions::operator/ """


  Parameters
  ----------
    const vector<double>& v
    const double a
  
  Returns
  -------
    vector<double>
  



  Parameters
  ----------
    const double a
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  



  Parameters
  ----------
    const double a
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<double>& a
    const Quaternion& Q
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<double>& a
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const Quaternion& a
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& Q
    const Quaternion& a
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& Q
    const double a
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const Quaternion& Q
    const vector<double>& a
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& Q
    const vector<double>& a
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& P
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  
"""

%feature("docstring") Quaternions::sqrtOfRotor """


  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  



  Parameters
  ----------
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  
"""

%feature("docstring") Quaternions::FrameFromZ """
Construct minimal-rotation frame from Z basis vector of that frame.
===================================================================
  Parameters
  ----------
    const vector<Quaternion>& Z
      Vector of Quaternions
    const vector<double>& T
      Vector of corresponding times
    const unsigned int NIterations = 5
      Number of refinements [default: 5]
  
  Returns
  -------
    vector<Quaternion>
  
  Description
  -----------
    The input vector of Quaternions, assumed to be pure unit vectors, represent
    the Z basis vectors of the frame at each instant of time. The returned
    vector of rotors will rotate the stationary frame's (x,y,z) vectors into
    the new frame's (X,Y,Z) vectors. The X and Y vectors are deduced by
    imposing the minimal-rotation condition. Note that this leaves an unfixed
    initial rotation about z.
  
"""

%feature("docstring") Quaternions::operator<< """
Print the quaternion nicely to stream.
======================================
  Parameters
  ----------
    ostream& out
    const Quaternions::Quaternion& q
  
  Returns
  -------
    ostream&
  
"""

%feature("docstring") Quaternions::FrameFromAngularVelocity_2D """


  Parameters
  ----------
    const vector<Quaternion>& Omega
      Vector of Quaternions.
    const vector<double>& T
      Vector of corresponding times.
  
  Returns
  -------
    vector<Quaternion>
  
  Description
  -----------
    Note that each element of Omega should be a pure-vector Quaternion,
    corresponding to the angular-velocity vector at the instant of time.
  
"""

%feature("docstring") Quaternions::Quaternion::normalized """


  Parameters
  ----------
    (none)
  
  Returns
  -------
    Quaternion
  
"""

%feature("docstring") Quaternions::Quaternion::log """
Return logarithm of Quaternion.
===============================
  Parameters
  ----------
    (none)
  
  Returns
  -------
    Quaternion
  
"""

%feature("docstring") Quaternions::Quaternion::operator[] """
Get component of Quaternion.
============================
  Parameters
  ----------
    const unsigned int i
  
  Returns
  -------
    double
  
  Description
  -----------
    The 0 component is the scalar part, and the 13 components are the vector
    components.
  

Get reference to component of Quaternion.
=========================================
  Parameters
  ----------
    const unsigned int i
  
  Returns
  -------
    double&
  
  Description
  -----------
    Note: This is unavailable from python.
  
"""

%feature("docstring") Quaternions::FrameAngularVelocity """


  Parameters
  ----------
    const vector<Quaternion>& f
    const vector<double>& t
  
  Returns
  -------
    vector<Quaternion>
  
"""

%feature("docstring") std """
namespace std
=============
  STL namespace.
  
"""

%feature("docstring") Quaternions::vec """


  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    vector<double>
  



  Parameters
  ----------
    const vector<Quaternions::Quaternion>& Q
  
  Returns
  -------
    vector<vector<double>>
  
"""

%feature("docstring") Quaternions::Quaternion::sqrt """


  Parameters
  ----------
    (none)
  
  Returns
  -------
    Quaternion
  
"""

%feature("docstring") Quaternions::FrameFromXY """
Construct frame given the X and Y basis vectors of that frame.
==============================================================
  Parameters
  ----------
    const vector<Quaternion>& X
      Vector of Quaternions
    const vector<Quaternion>& Y
      Vector of Quaternions
  
  Returns
  -------
    vector<Quaternion>
  
  Description
  -----------
    The input parameters are Quaternions, assumed to be pure unit vectors,
    representing the X and Y basis vectors of the frame at each instant of
    time. The returned vector of rotors will rotate the stationary frame's
    (x,y,z) vectors into the new frame's (X,Y,Z) vectors.
  
"""

%feature("docstring") Quaternions::FrameFromPrescribedRotation """
Construct minimal-rotation frame from Z basis vector of that frame.
===================================================================
  Parameters
  ----------
    const vector<Quaternion>& omega
      Vector of Quaternions
    const vector<double>& T
      Vector of corresponding times
    const unsigned int NIterations = 5
      Number of refinements [default: 5]
  
  Returns
  -------
    vector<Quaternion>
  
  Description
  -----------
    The input vector of Quaternions represent the angular-velocity vector
    (omega) of the frame at each instant of time. The returned vector of rotors
    will rotate the stationary frame's (x,y,z) vectors into the new frame's
    (X,Y,Z) vectors, where Z is parallel to omega, and the X and Y vectors are
    deduced by enforcing the condition that the instantaneous rotation of the
    frame about Z is |omega|. Note that this leaves an unfixed initial rotation
    in the XY plane.
  
"""

%feature("docstring") Quaternions::operator+ """


  Parameters
  ----------
    const vector<double>& v1
    const vector<double>& v2
  
  Returns
  -------
    vector<double>
  



  Parameters
  ----------
    const double a
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  



  Parameters
  ----------
    const double a
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<double>& a
    const Quaternion& Q
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<double>& a
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const Quaternion& a
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& Q
    const Quaternion& a
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& Q
    const double a
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const Quaternion& Q
    const vector<double>& a
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& Q
    const vector<double>& a
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& P
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  
"""

%feature("docstring") Quaternions::normalized """


  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  



  Parameters
  ----------
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  
"""

%feature("docstring") Quaternions::FrameFromAngularVelocity_Integrand """
Time-derivative of the quaternion logarithm for frame with given angular velocity.
==================================================================================
  Parameters
  ----------
    const vector<double>& r
      Quaternion logarithm corresponding to the current frame
    const vector<double>& Omega
      Quaternion vector giving instantaneous orbital velocity of frame
  
  Returns
  -------
    vector<double>
  
  Description
  -----------
    This function returns the time-derivative of the quaternion logarithm of
    the frame with angular velocity Omega. This can be integrated to give the
    quaternion logarithm of the frame, which can then be exponentiated to give
    the frame rotor.
  
"""

%feature("docstring") Quaternions::Component1 """


  Parameters
  ----------
    const vector<Quaternions::Quaternion>& Q
  
  Returns
  -------
    vector<double>
  
"""

%feature("docstring") Quaternions::Quaternion::operator!= """


  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    bool
  
"""

%feature("docstring") Quaternions::FrameFromAngularVelocity """
Find the frame with the given angular velocity data.
====================================================
  Parameters
  ----------
    const vector<Quaternion>& Omega
      Vector of Quaternions.
    const vector<double>& T
      Vector of corresponding times.
  
  Returns
  -------
    vector<Quaternions::Quaternion>
  
  Description
  -----------
    Note that each element of Omega should be a pure-vector Quaternion,
    corresponding to the angular-velocity vector at the instant of time.
    
    This function is not as accurate as might be hoped, because the time step
    of the input data is not adjustable, so you can't do anything like
    'adaptive' integration. If you have a function that returns Omega given
    time, you should use the other version of this (overloaded) function that
    uses such a function. Alternatively, if you are doing an integration as
    part of a larger system, you can use the code for the other version of this
    function as a guide on how to do so.
    
    FrameFromAngularVelocity(std::vector<double> (* Omega)(const double t),
    const double t0, const double t1, std::vector<Quaternion>& Qs,
    std::vector<double>& Ts)
  

Find the frame with the given angular velocity function.
========================================================
  Parameters
  ----------
    vector<double>(*)(const double t) Omega
      Function pointer returning angular velocity
    const double t0
      Initial time
    const double t1
      Final time
    vector<Quaternion>& Qs
      Output frame rotors
    vector<double>& Ts
      Output time steps
  
  Returns
  -------
    void
  
  Description
  -----------
    This function takes a function pointer Omega (which returns a 3-vector,
    given the time) and integrates to find the frame with that angular velocity.
    
    This function may not be very useful in general, because the angular
    velocity may not be known as a function of time. However, there are
    situations where the angular velocity is known at an instant of time, given
    other information. The code for this function should serve as a useful
    guide when implementing such integrations.
    
    In particular, the key piece in this integration is to reset the value of
    the quaternion logarithm (denoted below as r) between integration steps
    when the magnitude of r is too large. It gets reset to a value that is
    identical in terms of the resulting rotation, but has a smaller magnitude,
    so that the final result doesn't wander too much. This is equivalent to
    changing branches of a complex logarithm.
    
    There are two important things to note about this resetting procedure.
    First, the time stepper may want to take a very small step immediately
    after the reset, and should not be cause for alarm. Below, this is dealt
    with by also restting nSteps, and making sure that we take at least 10 more
    steps after that to let the time stepper adjust its step sizes accordingly.
    
    Second, the resulting rotor (which is the exponential of the logarithm)
    will flip signs when the logarithm is reset. This will have no effect on
    the physical frame deduced from the rotor, but could be bad news for
    interpolations. So we simply 'unflip' the signs when returning.
  
"""

%feature("docstring") Quaternions """
namespace Quaternions
=====================
"""

%feature("docstring") Quaternions::operator- """


  Parameters
  ----------
    const vector<double>& v1
    const vector<double>& v2
  
  Returns
  -------
    vector<double>
  



  Parameters
  ----------
    const double a
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  



  Parameters
  ----------
    const double a
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<double>& a
    const Quaternion& Q
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<double>& a
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const Quaternion& a
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& Q
    const Quaternion& a
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& Q
    const double a
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const Quaternion& Q
    const vector<double>& a
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& Q
    const vector<double>& a
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& P
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  
"""

%feature("docstring") Quaternions::pow """


  Parameters
  ----------
    const Quaternion& Q
    const double x
  
  Returns
  -------
    Quaternion
  



  Parameters
  ----------
    const Quaternion& Q
    const Quaternion& P
  
  Returns
  -------
    Quaternion
  



  Parameters
  ----------
    const vector<Quaternion>& Q
    const double x
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& Q
    const Quaternion& P
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const Quaternion& Q
    const vector<double>& x
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const Quaternion& Q
    const vector<Quaternion>& P
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& Q
    const vector<double>& x
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& Q
    const vector<Quaternion>& P
  
  Returns
  -------
    vector<Quaternion>
  
"""

%feature("docstring") Quaternions::Quaternion """
class Quaternions::Quaternion
=============================
  Object representing an individual quaternion.
  
  Member variables
  ----------------
    double w
    double x
    double y
    double z
  
"""

%feature("docstring") Quaternions::operator* """


  Parameters
  ----------
    const vector<double>& v
    const double a
  
  Returns
  -------
    vector<double>
  



  Parameters
  ----------
    const double a
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  



  Parameters
  ----------
    const double a
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<double>& a
    const Quaternion& Q
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<double>& a
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const Quaternion& a
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& Q
    const Quaternion& a
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& Q
    const double a
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const Quaternion& Q
    const vector<double>& a
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& Q
    const vector<double>& a
  
  Returns
  -------
    vector<Quaternion>
  



  Parameters
  ----------
    const vector<Quaternion>& P
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  
"""

%feature("docstring") Quaternions::Quaternion::vec """


  Parameters
  ----------
    (none)
  
  Returns
  -------
    vector<double>
  
"""

%feature("docstring") Quaternions::Quaternion::Quaternion """
Empty constructor  initialized to 0s.
=====================================
  Parameters
  ----------
    (none)
  
  Returns
  -------
    Quaternion
  

Copy constructor.
=================
  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  

Constructor from spherical coordinates.
=======================================
  Parameters
  ----------
    const double vartheta
      Float representing the polar angle
    const double varphi
      Float representing the azimuthal angle
  
  Returns
  -------
    Quaternion
  
  Description
  -----------
    The unit Quaternion constructed in this way rotates the z axis onto the
    point given by the coordinates (vartheta, varphi).
  

Constructor from Euler angles.
==============================
  Parameters
  ----------
    const double alpha
      First Euler angle
    const double beta
      Second Euler angle
    const double gamma
      Third Euler angle
  
  Returns
  -------
    Quaternion
  
  Description
  -----------
    The unit Quaternion constructed in this way corresponds to a rotation by
    the given Euler angles. The convention used here is the z-y-z convention.
    That is, the rotations occur about the fixed axes: first a rotation by
    gamma about the z axis, then a rotation by beta about the y axis, and
    finally a rotation by alpha about the z axis.
  

Constructor by components.
==========================
  Parameters
  ----------
    const double w0
      Scalar component of Quaternion
    const double x0
      First vector component of Quaternion
    const double y0
      Second vector component of Quaternion
    const double z0
      Third vector component of Quaternion
  
  Returns
  -------
    Quaternion
  

Constructor from vector.
========================
  Parameters
  ----------
    const vector<double>& q
      Vector containing three or four components
  
  Returns
  -------
    Quaternion
  
  Description
  -----------
    If the input vector has three components, they are assumed to represent the
    vector components of the Quaternion, and the scalar component is set to
    zero. If the input vector has four components, they are assumed to
    represent the four components of the Quaternion, with the 0 component being
    the scalar part.
  

Constructor from axis-angle.
============================
  Parameters
  ----------
    const double angle
      Single number giving the rotation angle
    const vector<double>& axis
      Three-component vector (assumed to be normalized) giving the axis
  
  Returns
  -------
    Quaternion
  
  Description
  -----------
    This constructs a rotor (assuming 'axis' is normalized) corresponding to
    rotation about the given axis through the given angle.
  
"""

%feature("docstring") Quaternions::Quaternion::operator* """


  Parameters
  ----------
    const double t
  
  Returns
  -------
    Quaternion
  

Quaternion multiplication.
==========================
  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  
"""

%feature("docstring") Quaternions::Slerp """


  Parameters
  ----------
    const double tau
    const Quaternion& Qa
    const Quaternion& Qb
  
  Returns
  -------
    Quaternion
  
"""

%feature("docstring") Quaternions::Quaternion::operator/ """


  Parameters
  ----------
    const double t
  
  Returns
  -------
    Quaternion
  



  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  
"""

%feature("docstring") Quaternions::Quaternion::operator- """


  Parameters
  ----------
    (none)
  
  Returns
  -------
    Quaternion
  



  Parameters
  ----------
    const double t
  
  Returns
  -------
    Quaternion
  



  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  
"""

%feature("docstring") Quaternions::cross """


  Parameters
  ----------
    const vector<double>& v1
    const vector<double>& v2
  
  Returns
  -------
    vector<double>
  



  Parameters
  ----------
    const Quaternion& Q
    const Quaternion& P
  
  Returns
  -------
    Quaternion
  
"""

%feature("docstring") Quaternions::Quaternion::exp """
Return exponent of Quaternion.
==============================
  Parameters
  ----------
    (none)
  
  Returns
  -------
    Quaternion
  
"""

%feature("docstring") Quaternions::Quaternion::pow """


  Parameters
  ----------
    const double t
  
  Returns
  -------
    Quaternion
  



  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  
"""

%feature("docstring") Quaternions::normsquared """


  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    double
  



  Parameters
  ----------
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<double>
  
"""

%feature("docstring") Quaternions::dot """


  Parameters
  ----------
    const vector<double>& v1
    const vector<double>& v2
  
  Returns
  -------
    double
  



  Parameters
  ----------
    const Quaternion& Q
    const Quaternion& P
  
  Returns
  -------
    double
  
"""

%feature("docstring") Quaternions::Quaternion::operator+ """


  Parameters
  ----------
    const double t
  
  Returns
  -------
    Quaternion
  



  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  
"""

%feature("docstring") Quaternions::conjugate """


  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    Quaternion
  



  Parameters
  ----------
    const vector<Quaternion>& Q
  
  Returns
  -------
    vector<Quaternion>
  
"""

%feature("docstring") Quaternions::Quaternion::operator= """


  Parameters
  ----------
    const Quaternion& Q
  
  Returns
  -------
    Quaternion&
  
"""

