use utf8;

package SemanticWeb::Schema::relatedAnatomy;

# ABSTRACT: Anatomical systems or structures that relate to the superficial anatomy.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'relatedAnatomy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Anatomical systems or structures that relate to the superficial anatomy.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
