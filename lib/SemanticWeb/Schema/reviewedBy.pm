use utf8;

package SemanticWeb::Schema::reviewedBy;

# ABSTRACT: People or organizations that have reviewed the content on this web page for accuracy and/or completeness.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'reviewedBy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

People or organizations that have reviewed the content on this web page for
accuracy and/or completeness.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
