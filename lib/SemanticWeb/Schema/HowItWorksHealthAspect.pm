use utf8;

package SemanticWeb::Schema::HowItWorksHealthAspect;

# ABSTRACT: Content that discusses and explains how a particular health-related topic works

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'HowItWorksHealthAspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Content that discusses and explains how a particular health-related topic
works, e.g. in terms of mechanisms and underlying science.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
