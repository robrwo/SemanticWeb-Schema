use utf8;

package SemanticWeb::Schema::CrossSectional;

# ABSTRACT: Studies carried out on pre-existing data (usually from 'snapshot' surveys)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'CrossSectional';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Studies carried out on pre-existing data (usually from 'snapshot' surveys),
such as that collected by the Census Bureau. Sometimes called Prevalence
Studies.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
