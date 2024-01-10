use utf8;

package SemanticWeb::Schema::applicationSuite;

# ABSTRACT: The name of the application suite to which the application belongs (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'applicationSuite';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The name of the application suite to which the application belongs (e.g.
Excel belongs to Office).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
