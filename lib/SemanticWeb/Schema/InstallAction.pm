use utf8;

package SemanticWeb::Schema::InstallAction;

# ABSTRACT: The act of installing an application.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::ConsumeAction /;


use MooX::JSON_LD 'InstallAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

The act of installing an application.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ConsumeAction>

=cut

1;
