program test_loop
    implicit none
    integer, dimension(-1:1,-1:1)::A
    integer, dimension(-2:2,-2:2)::B
    integer i,j

    ! init A&B
    A=1
    B=1

    ! set B
    do j=-1,1
        do i=-1,1
            B(i,j)=B(i,j)+A(i,j)
        enddo
    enddo  
    ! do j=-2,2
    !     do i=-2,2
    !         B(i,j)=B(i,j)+A(i,j)
    !     enddo
    ! enddo  
    
    ! print B
    do j=-2,2
        do i=-2,2
            write(*,"(I12)",advance='no') B(i,j)
        enddo
        write(*,*)
    enddo  
    
end program test_loop