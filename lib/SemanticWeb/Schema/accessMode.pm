use utf8;

package SemanticWeb::Schema::accessMode;

# ABSTRACT: The human sensory perceptual system or cognitive faculty through which a person may process or perceive information

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'accessMode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The human sensory perceptual system or cognitive faculty through which a
person may process or perceive information. Values should be drawn from the
[approved
vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessMode-vo
cabulary).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
