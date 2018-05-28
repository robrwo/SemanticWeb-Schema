package SemanticWeb::Schema::Course;

# ABSTRACT: A description of an educational course which may be offered as distinct instances at which take place at different times or take place at different locations

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A description of an educational course which may be offered as distinct
instances at which take place at different times or take place at different
locations, or be offered through different media or modes of study. An
educational course is a sequence of one or more educational events and/or
creative works which aims to build knowledge, competence or ability of
learners.




=head1 ATTRIBUTES


=head2 C<course_code>

C<courseCode>

=begin html

The identifier for the <a class="localLink"
href="http://schema.org/Course">Course</a> used by the course <a
class="localLink" href="http://schema.org/provider">provider</a> (e.g.
CS101 or 6.001).

=end html


A course_code should be one of the following types:

=over

=item C<Str>

=back

=cut

has course_code => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'courseCode',
    json_ld_serializer => \&_serialize_course_code,
);

sub _serialize_course_code { $_[0]->_serializer('course_code') }


=head2 C<course_prerequisites>

C<coursePrerequisites>

=begin html

Requirements for taking the Course. May be completion of another <a
class="localLink" href="http://schema.org/Course">Course</a> or a textual
description like "permission of instructor". Requirements may be a
pre-requisite competency, referenced using <a class="localLink"
href="http://schema.org/AlignmentObject">AlignmentObject</a>.

=end html


A course_prerequisites should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AlignmentObject']>

=item C<InstanceOf['SemanticWeb::Schema::Course']>

=item C<Str>

=back

=cut

has course_prerequisites => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'coursePrerequisites',
    json_ld_serializer => \&_serialize_course_prerequisites,
);

sub _serialize_course_prerequisites { $_[0]->_serializer('course_prerequisites') }


=head2 C<has_course_instance>

C<hasCourseInstance>

An offering of the course at a specific time and place or through specific
media or mode of study or to a specific section of students.


A has_course_instance should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CourseInstance']>

=back

=cut

has has_course_instance => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'hasCourseInstance',
    json_ld_serializer => \&_serialize_has_course_instance,
);

sub _serialize_has_course_instance { $_[0]->_serializer('has_course_instance') }




around json_ld_type => sub { return 'Course' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'courseCode' => \&_serialize_course_code,
       'coursePrerequisites' => \&_serialize_course_prerequisites,
       'hasCourseInstance' => \&_serialize_has_course_instance,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
