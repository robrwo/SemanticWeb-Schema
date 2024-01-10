use utf8;

package SemanticWeb::Schema::temporal;

# ABSTRACT: The "temporal" property can be used in cases where more specific properties (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'temporal';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The "temporal" property can be used in cases where more specific properties
(e.g. [[temporalCoverage]], [[dateCreated]], [[dateModified]], [[datePublished]]) are not known to be appropriate.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
