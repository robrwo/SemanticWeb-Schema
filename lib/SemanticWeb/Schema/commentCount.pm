use utf8;

package SemanticWeb::Schema::commentCount;

# ABSTRACT: The number of comments this CreativeWork (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'commentCount';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of comments this CreativeWork (e.g. Article, Question or Answer)
has received. This is most applicable to works published in Web sites with
commenting system; additional comments may exist elsewhere.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
