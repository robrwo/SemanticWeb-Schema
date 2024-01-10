use utf8;

package SemanticWeb::Schema::issueNumber;

# ABSTRACT: Identifies the issue of publication; for example

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'issueNumber';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Identifies the issue of publication; for example, "iii" or "2".




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
