use utf8;

package SemanticWeb::Schema::educationalCredentialAwarded;

# ABSTRACT: A description of the qualification

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'educationalCredentialAwarded';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A description of the qualification, award, certificate, diploma or other
educational credential awarded as a consequence of successful completion of
this course or program.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
