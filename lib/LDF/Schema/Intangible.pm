package LDF::Schema::Intangible;

# ABSTRACT: A utility class that serves as the umbrella for a number of 'intangible' things such as quantities

use Moo;

extends qw/ LDF::Schema::Thing /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A utility class that serves as the umbrella for a number of 'intangible'
things such as quantities, structured values, etc.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Intangible' }



=head1 SEE ALSO



L<LDF::Schema::Thing>

=cut

1;
