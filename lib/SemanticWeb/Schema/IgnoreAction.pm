use utf8;

package SemanticWeb::Schema::IgnoreAction;

# ABSTRACT: The act of intentionally disregarding the object

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::AssessAction /;


use MooX::JSON_LD 'IgnoreAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of intentionally disregarding the object. An agent ignores an
object.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AssessAction>

=cut

1;
