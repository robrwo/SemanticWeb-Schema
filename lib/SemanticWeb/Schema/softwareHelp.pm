use utf8;

package SemanticWeb::Schema::softwareHelp;

# ABSTRACT: Software application help.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'softwareHelp';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Software application help.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
