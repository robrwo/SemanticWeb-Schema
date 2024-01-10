use utf8;

package SemanticWeb::Schema::worksFor;

# ABSTRACT: Organizations that the person works for.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'worksFor';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Organizations that the person works for.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
