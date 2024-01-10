use utf8;

package SemanticWeb::Schema::WesternConventional;

# ABSTRACT: The conventional Western system of medicine

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'WesternConventional';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The conventional Western system of medicine, that aims to apply the best
available evidence gained from the scientific method to clinical decision
making. Also known as conventional or Western medicine.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
