use utf8;

package SemanticWeb::Schema::accessibilityHazard;

# ABSTRACT: A characteristic of the described resource that is physiologically dangerous to some users

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'accessibilityHazard';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A characteristic of the described resource that is physiologically
dangerous to some users. Related to WCAG 2.0 guideline 2.3. Values should
be drawn from the [approved
vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibility
Hazard-vocabulary).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
