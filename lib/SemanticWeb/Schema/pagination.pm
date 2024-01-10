use utf8;

package SemanticWeb::Schema::pagination;

# ABSTRACT: Any description of pages that is not separated into pageStart and pageEnd; for example

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'pagination';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Any description of pages that is not separated into pageStart and pageEnd;
for example, "1-6, 9, 55" or "10-12, 46-49".




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
