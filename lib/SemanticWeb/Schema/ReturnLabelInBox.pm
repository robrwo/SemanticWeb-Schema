use utf8;

package SemanticWeb::Schema::ReturnLabelInBox;

# ABSTRACT: Specifies that a return label will be provided by the seller in the shipping box.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'ReturnLabelInBox';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifies that a return label will be provided by the seller in the
shipping box.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
