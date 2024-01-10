use utf8;

package SemanticWeb::Schema::supersededBy;

# ABSTRACT: Relates a term (i

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'supersededBy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Relates a term (i.e. a property, class or enumeration) to one that
supersedes it.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
