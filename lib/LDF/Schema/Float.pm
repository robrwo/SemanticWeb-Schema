package LDF::Schema::Float;

# ABSTRACT: Data type: Floating number.

use Moo;

extends qw/ LDF::Schema::Number /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Data type: Floating number.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Float' }



=head1 SEE ALSO



L<LDF::Schema::Number>

=cut

1;
