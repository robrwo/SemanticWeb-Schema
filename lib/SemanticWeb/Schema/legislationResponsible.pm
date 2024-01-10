use utf8;

package SemanticWeb::Schema::legislationResponsible;

# ABSTRACT: An individual or organization that has some kind of responsibility for the legislation

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'legislationResponsible';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An individual or organization that has some kind of responsibility for the
legislation. Typically the ministry who is/was in charge of elaborating the
legislation, or the adressee for potential questions about the legislation
once it is published.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
