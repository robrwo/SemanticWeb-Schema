use utf8;

package SemanticWeb::Schema::HowOrWhereHealthAspect;

# ABSTRACT: Information about how or where to find a topic

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'HowOrWhereHealthAspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Information about how or where to find a topic. Also may contain location
data that can be used for where to look for help if the topic is observed.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
