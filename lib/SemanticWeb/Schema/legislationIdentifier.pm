use utf8;

package SemanticWeb::Schema::legislationIdentifier;

# ABSTRACT: An identifier for the legislation

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'legislationIdentifier';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An identifier for the legislation. This can be either a string-based
identifier, like the CELEX at EU level or the NOR in France, or a
web-based, URL/URI identifier, like an ELI (European Legislation
Identifier) or an URN-Lex.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
