use utf8;

package SemanticWeb::Schema::Ayurvedic;

# ABSTRACT: A system of medicine that originated in India over thousands of years and that focuses on integrating and balancing the body

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Ayurvedic';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A system of medicine that originated in India over thousands of years and
that focuses on integrating and balancing the body, mind, and spirit.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
