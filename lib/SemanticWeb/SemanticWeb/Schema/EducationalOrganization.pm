package SemanticWeb::Schema::EducationalOrganization;

# ABSTRACT: An educational organization.

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An educational organization.




=head1 ATTRIBUTES


=head2 C<alumni>



Alumni of an organization.


A alumni should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has alumni => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'EducationalOrganization' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'alumni' => $self->curry::_serializer('alumni'),
    } ]
};




=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
