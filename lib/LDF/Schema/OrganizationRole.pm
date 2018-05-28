package LDF::Schema::OrganizationRole;

# ABSTRACT: A subclass of Role used to describe roles within organizations.

use Moo;

extends qw/ LDF::Schema::Role /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A subclass of Role used to describe roles within organizations.




=head1 ATTRIBUTES


=head2 C<numbered_position>

C<numberedPosition>

A number associated with a role in an organization, for example, the number
on an athlete's jersey.


A numbered_position should be one of the following types:

=over

=item C<Num>

=back

=cut

has numbered_position => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'OrganizationRole' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'numberedPosition' => $self->curry::_serializer('numbered_position'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::Role>

=cut

1;
