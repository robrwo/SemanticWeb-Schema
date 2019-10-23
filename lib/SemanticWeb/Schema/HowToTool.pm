use utf8;

package SemanticWeb::Schema::HowToTool;

# ABSTRACT: A tool used (but not consumed) when performing instructions for how to achieve a result.

use Moo;

extends qw/ SemanticWeb::Schema::HowToItem /;


use MooX::JSON_LD 'HowToTool';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.2';

=encoding utf8

=head1 DESCRIPTION

A tool used (but not consumed) when performing instructions for how to
achieve a result.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::HowToItem>

=cut

1;
