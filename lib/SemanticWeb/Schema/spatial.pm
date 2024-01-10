use utf8;

package SemanticWeb::Schema::spatial;

# ABSTRACT: The "spatial" property can be used in cases when more specific properties (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'spatial';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The "spatial" property can be used in cases when more specific properties
(e.g. [[locationCreated]], [[spatialCoverage]], [[contentLocation]]) are not known to be appropriate.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
