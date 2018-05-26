package LDF::Schema::Residence;

# ABSTRACT: The place where a person lives.

use Moo;

extends qw/ LDF::Schema::Place /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The place where a person lives.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Residence' }



=head1 SEE ALSO



L<LDF::Schema::Place>

=cut

1;
