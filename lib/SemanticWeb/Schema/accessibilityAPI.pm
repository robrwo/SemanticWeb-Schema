use utf8;

package SemanticWeb::Schema::accessibilityAPI;

# ABSTRACT: Indicates that the resource is compatible with the referenced accessibility API

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'accessibilityAPI';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates that the resource is compatible with the referenced accessibility
API. Values should be drawn from the [approved
vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibility
API-vocabulary).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
