use utf8;

package SemanticWeb::Schema::accessibilitySummary;

# ABSTRACT: A human-readable summary of specific accessibility features or deficiencies

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'accessibilitySummary';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A human-readable summary of specific accessibility features or
deficiencies, consistent with the other accessibility metadata but
expressing subtleties such as "short descriptions are present but long
descriptions will be needed for non-visual users" or "short descriptions
are present and no long descriptions are needed".




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
