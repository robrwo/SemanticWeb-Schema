use utf8;

package SemanticWeb::Schema::jobImmediateStart;

# ABSTRACT: An indicator as to whether a position is available for an immediate start.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'jobImmediateStart';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An indicator as to whether a position is available for an immediate start.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
