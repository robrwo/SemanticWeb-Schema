use utf8;

package SemanticWeb::Schema::ReturnByMail;

# ABSTRACT: Specifies that product returns must be done by mail.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'ReturnByMail';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifies that product returns must be done by mail.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
