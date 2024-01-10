use utf8;

package SemanticWeb::Schema::publicAccess;

# ABSTRACT: A flag to signal that the [[Place]] is open to public visitors

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'publicAccess';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A flag to signal that the L<SemanticWeb::Schema::Place> is open to public visitors.  If this property is omitted there is no assumed default boolean value.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
