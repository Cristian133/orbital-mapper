program main
    use ElsetRecMod
    use SGP4Mod

    implicit none

    integer*4 :: year,mon,day,hr,minute
    real*8 :: sec
    real*8 :: jd, jdfrac

    character(8) :: Date
    character(10) :: Time
    character(5) :: Zone
    integer :: Values(8)


    100  Format(/, 1X, A, 2X, I4)
    200  Format(/, 1X, A, 2X, F20.10)

    call Date_and_Time(Date, Time, Zone, Values)
    print *, 'The date is ', Date
    print *
    print *, 'The time is ', Time
    print *
    print *, 'The time zone difference is ', Zone
    print 100, 'The year is        ', Values(1)
    print 100, 'The month is       ', Values(2)
    print 100, 'The day is         ', Values(3)
    print 100, 'The time zone is   ', Values(4)
    print 100, 'The hour is        ', Values(5)
    print 100, 'The minute is      ', Values(6)
    print 100, 'The second is      ', Values(7)
    print 100, 'The millisecond is ', Values(8)


    year = Values(1)
    mon = Values(2)
    day = Values(3)
    hr = Values(5) + 3
    minute = Values(6)
    sec = Values(7)

    call jday(year, mon, day, hr, minute, sec, jd, jdfrac)
    print 200, 'The Julian Day is', jd + jdfrac
end program main
