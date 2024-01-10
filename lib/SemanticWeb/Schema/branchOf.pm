use utf8;

package SemanticWeb::Schema::branchOf;

# ABSTRACT: The larger organization that this local business is a branch of

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'branchOf';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The larger organization that this local business is a branch of, if any. Not to be confused with (anatomical) [[branch]].



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
