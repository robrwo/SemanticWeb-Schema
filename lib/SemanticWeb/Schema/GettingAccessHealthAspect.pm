use utf8;

package SemanticWeb::Schema::GettingAccessHealthAspect;

# ABSTRACT: Content that discusses practical and policy aspects for getting access to specific kinds of healthcare (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'GettingAccessHealthAspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Content that discusses practical and policy aspects for getting access to
specific kinds of healthcare (e.g. distribution mechanisms for vaccines).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
