use utf8;

package SemanticWeb::Schema::PaintAction;

# ABSTRACT: The act of producing a painting

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreateAction /;


use MooX::JSON_LD 'PaintAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of producing a painting, typically with paint and canvas as
instruments.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreateAction>

=cut

1;
