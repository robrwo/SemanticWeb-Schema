use utf8;

package SemanticWeb::Schema::branch;

# ABSTRACT: The branches that delineate from the nerve bundle

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'branch';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The branches that delineate from the nerve bundle. Not to be confused with [[branchOf]].



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
