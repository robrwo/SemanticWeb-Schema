use utf8;

package SemanticWeb::Schema::isResizable;

# ABSTRACT: Whether the 3DModel allows resizing

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'isResizable';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Whether the 3DModel allows resizing. For example, room layout applications
often do not allow 3DModel elements to be resized to reflect reality.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
