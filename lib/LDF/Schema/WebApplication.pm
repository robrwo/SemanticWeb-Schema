package LDF::Schema::WebApplication;

# ABSTRACT: Web applications.

use Moo;

extends qw/ LDF::Schema::SoftwareApplication /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Web applications.




=head1 ATTRIBUTES


=head2 C<browser_requirements>

C<browserRequirements>

Specifies browser requirements in human-readable text. For example,
'requires HTML5 support'.


A browser_requirements should be one of the following types:

=over

=item C<Str>

=back

=cut

has browser_requirements => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'WebApplication' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'browserRequirements' => $self->curry::_serializer('browser_requirements'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::SoftwareApplication>

=cut

1;
