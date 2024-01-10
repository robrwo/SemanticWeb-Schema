use utf8;

package SemanticWeb::Schema::Infectious;

# ABSTRACT: Something in medical science that pertains to infectious diseases

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Infectious';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Something in medical science that pertains to infectious diseases, i.e.
caused by bacterial, viral, fungal or parasitic infections.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
