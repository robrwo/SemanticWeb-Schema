package LDF::Schema::HowToStep;

# ABSTRACT: A step in the instructions for how to achieve a result

use Moo;

extends qw/ LDF::Schema::ItemList /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A step in the instructions for how to achieve a result. It is an ordered
list with HowToDirection and/or HowToTip items.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'HowToStep' }



=head1 SEE ALSO



L<LDF::Schema::ItemList>

=cut

1;
