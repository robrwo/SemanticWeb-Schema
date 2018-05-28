package LDF::Schema::HowToTip;

# ABSTRACT: An explanation in the instructions for how to achieve a result

use Moo;

extends qw/ LDF::Schema::ListItem /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An explanation in the instructions for how to achieve a result. It provides
supplementary information about a technique, supply, author's preference,
etc. It can explain what could be done, or what should not be done, but
doesn't specify what should be done (see HowToDirection).




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'HowToTip' }



=head1 SEE ALSO



L<LDF::Schema::ListItem>

=cut

1;
