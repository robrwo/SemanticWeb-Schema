package LDF::Schema::CourseInstance;

# ABSTRACT: An instance of a <a class="localLink" href="http://schema

use Moo;

extends qw/ LDF::Schema::Event /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

An instance of a <a class="localLink"
href="http://schema.org/Course">Course</a> which is distinct from other
instances because it is offered at a different time or location or through
different media or modes of study or to a specific section of students.

=end html




=head1 ATTRIBUTES


=head2 C<course_mode>

C<courseMode>

The medium or means of delivery of the course instance or the mode of
study, either as a text label (e.g. "online", "onsite" or "blended";
"synchronous" or "asynchronous"; "full-time" or "part-time") or as a URL
reference to a term from a controlled vocabulary (e.g.
https://ceds.ed.gov/element/001311#Asynchronous ).


A course_mode should be one of the following types:

=over

=item C<Str>

=back

=cut

has course_mode => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<instructor>



=begin html

A person assigned to instruct or provide instructional assistance for the
<a class="localLink"
href="http://schema.org/CourseInstance">CourseInstance</a>.

=end html


A instructor should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has instructor => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'CourseInstance' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { courseMode => 'course_mode' },
      { instructor => 'instructor' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Event>

=cut

1;
